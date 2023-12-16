package it.controller;

import it.model.Person;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class MyController {
    private static final List<Person> list = new ArrayList<>();

    @GetMapping
    public String menu(Model model) {
        model.addAttribute("find", list);
        return "menu";
    }

    @GetMapping("find/by/{id}")
    public String findById(Model model, @PathVariable int id) {
        model.addAttribute("find", list.get(id - 1));
        return "findById";
    }

    @GetMapping("save/form")
    public String saveForm() {
        return "saveForm";
    }

    @PostMapping("save")
    public String save(
            @RequestParam("name") String name,
            @RequestParam("age") int age
    ) {
        Person person = new Person();
        person.setName(name);
        person.setAge(age);
        person.setId(list.size() + 1);
        list.add(person);
        return "redirect:/";
    }

    @GetMapping("update/form/{id}")
    public String updateForm(Model model, @PathVariable int id) {
        model.addAttribute("a", list.get(id - 1));
        return "updateForm";
    }

    @PostMapping("update/{id}")
    public String update(
            @RequestParam("name") String name,
            @RequestParam("age") int age,
            @PathVariable int id
    ) {
        Person person = new Person();
        person.setName(name);
        person.setAge(age);
        person.setId(id);
        list.set(id - 1, person);
        return "redirect:/";
    }

    @GetMapping("delete/{id}")
    public String remove(@PathVariable int id) {
        list.remove(id - 1);
        return "redirect:/";
    }
}